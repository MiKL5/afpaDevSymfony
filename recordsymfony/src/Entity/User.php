<?php

namespace App\Entity;

use App\Repository\UserRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: UserRepository::class)]
class User
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(type: 'integer')]
    private $id;

    #[ORM\Column(type: 'string', length: 255)]
    private $user_name;

    #[ORM\Column(type: 'string', length: 255)]
    private $user_firstname;

    #[ORM\Column(type: 'string', length: 255)]
    private $user_mail;

    #[ORM\Column(type: 'string', length: 255)]
    private $user_password;

    #[ORM\Column(type: 'string', length: 255)]
    private $user_resetpassword;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getUserName(): ?string
    {
        return $this->user_name;
    }

    public function setUserName(string $user_name): self
    {
        $this->user_name = $user_name;

        return $this;
    }

    public function getUserFirstname(): ?string
    {
        return $this->user_firstname;
    }

    public function setUserFirstname(string $user_firstname): self
    {
        $this->user_firstname = $user_firstname;

        return $this;
    }

    public function getUserMail(): ?string
    {
        return $this->user_mail;
    }

    public function setUserMail(string $user_mail): self
    {
        $this->user_mail = $user_mail;

        return $this;
    }

    public function getUserPassword(): ?string
    {
        return $this->user_password;
    }

    public function setUserPassword(string $user_password): self
    {
        $this->user_password = $user_password;

        return $this;
    }

    public function getUserResetpassword(): ?string
    {
        return $this->user_resetpassword;
    }

    public function setUserResetpassword(string $user_resetpassword): self
    {
        $this->user_resetpassword = $user_resetpassword;

        return $this;
    }
}
