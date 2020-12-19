namespace :participants do
  desc "TODO"
  task sort: :environment do
    participants = Participant.all
    ids = participants.map { |participant| participant['_id'] }
    participants = participants.to_a.shuffle
    participants.each_with_index do |single_participant, index|
      puts single_participant
      id_to_sort = ids.without single_participant['_id']
      if ids.size == 2 && 2 == participants.size - index && participants.include?(participants.last['_id'])
        friend = participants.without(participants.last['_id']).first
      else
        friend = id_to_sort.sample
      end
      if friend.nil?
        raise "NO SE PUDO ASIGNAR UN AMIGO"
      end
      single_participant['friend'] = friend
      single_participant.save
      ids = ids.without friend
    end
    unless participants.any? { |part| part['_id'] == part['friend']}
      puts "SORTEO TERMINADO CON EXITO"
    else
      raise "EL SORTEO TIENE REPETIDOS"
    end
    participants.each do |p|
      name = p['name']
      email_address = p['email']
      friend = Participant.find p['friend']
      friend_name = friend['name']
      # puts "#{name} => #{friend_name}"
      # UserMailer.with(user: user).weekly_summary.deliver_now
      ParticipantsMailer.with(name: name, email_address: email_address, friend_name: friend_name).notify_friend.deliver_now
    end
  end
end
