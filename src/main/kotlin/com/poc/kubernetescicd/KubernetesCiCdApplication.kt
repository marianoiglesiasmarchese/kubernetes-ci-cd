package com.poc.kubernetescicd

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

@SpringBootApplication
class KubernetesCiCdApplication

fun main(args: Array<String>) {
	runApplication<KubernetesCiCdApplication>(*args)
}

@RestController
class Controller{
	@GetMapping("/")
	fun helloWorld() = "Hello world"
}