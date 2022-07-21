<?php

namespace App\Entity;

use App\Repository\UserRepository;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: UserRepository::class)]
class User
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column()]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $user_name = null;

    #[ORM\Column(length: 255)]
    private ?string $user_firstname = null;

    #[ORM\Column(length: 255)]
    private ?string $user_email = null;

    #[ORM\Column(type: Types::DATE_MUTABLE, nullable: true)]
    private ?\DateTimeInterface $user_ddn = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $user_adress = null;

    #[ORM\Column(nullable: true)]
    private ?int $user_zipcode = null;

    #[ORM\Column(length: 50, nullable: true)]
    private ?string $user_city = null;

    #[ORM\Column(nullable: true)]
    private ?int $user_phonenumber = null;

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

    public function getUserEmail(): ?string
    {
        return $this->user_email;
    }

    public function setUserEmail(string $user_email): self
    {
        $this->user_email = $user_email;

        return $this;
    }

    public function getUserDdn(): ?\DateTimeInterface
    {
        return $this->user_ddn;
    }

    public function setUserDdn(?\DateTimeInterface $user_ddn): self
    {
        $this->user_ddn = $user_ddn;

        return $this;
    }

    public function getUserAdress(): ?string
    {
        return $this->user_adress;
    }

    public function setUserAdress(?string $user_adress): self
    {
        $this->user_adress = $user_adress;

        return $this;
    }

    public function getUserZipcode(): ?int
    {
        return $this->user_zipcode;
    }

    public function setUserZipcode(?int $user_zipcode): self
    {
        $this->user_zipcode = $user_zipcode;

        return $this;
    }

    public function getUserCity(): ?string
    {
        return $this->user_city;
    }

    public function setUserCity(?string $user_city): self
    {
        $this->user_city = $user_city;

        return $this;
    }

    public function getUserPhonenumber(): ?int
    {
        return $this->user_phonenumber;
    }

    public function setUserPhonenumber(?int $user_phonenumber): self
    {
        $this->user_phonenumber = $user_phonenumber;

        return $this;
    }
}
