//
//  Person.swift
//  LoginApp
//
//  Created by Kirill Kniga on 18.02.2023.
//

struct Person {
    let name: String
    let surname: String
    let work: String
    let department: String
    let position: String
    let bio: String
}

struct User {
    let username = "User"
    let password = "1"
    let person: Person
}

let user = User(person: .init(
    name: "Kirill",
    surname: "Kniga",
    work: "Leomax",
    department: "IT Department",
    position: "Technical support engineer",
    bio: "Кирилл Книга получил высшее музыкальное образование по классу кларнета. 6 лет преподавал в детской музыкальной школе в классе кларнета и саксофона. Все это время параллельно работал мастером по обслуживанию сети и iMacов мелкого предприятия, где и познакомился с техникой Apple. В августе 2021 года устроился на должность инженера технической поддержки. Теперь музыка - это хобби.")
)


