<?php

namespace App\Form;

use App\Entity\User;
use Doctrine\DBAL\Types\DecimalType;
use Symfony\Component\Form\AbstractType;
use ApiPlatform\Core\Action\PlaceholderAction;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Validator\Constraints\IsTrue;
use Symfony\Component\Validator\Constraints\Length;
use Symfony\Component\Validator\Constraints\NotBlank;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\BirthdayType;
use Symfony\Component\Form\Extension\Core\Type\CheckboxType;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;

class RegistrationFormType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            // ->add('username',TextType::class,['label'=>'Nom d\'utilisateur','attr' => ['class' => 'bgform',],])
            ->add('name',TextType::class,['label'=>'Nom','attr' => ['class' => 'bgform'],])
            ->add('firstname',TextType::class,['label'=>'Prénom ','attr' => ['class' => 'bgform'],])
            ->add('email',TextType::class,['label'=>'Adresse de courriel','attr' => ['class' => 'bgform'],])
            // ->add('phone')
            ->add('birthdate',BirthdayType::class,['label'=>'Date de naissance'])
            ->add('adress',TextType::class,['label'=>'Adresse','attr' => ['class' => 'bgform'],])
            ->add('zipcode',TextType::class,['label'=>'Code postal','constraints' => new Length(['max' => 5]),'attr' => ['class' => 'bgform'],]) 
            ->add('city',TextType::class,['label'=>'Ville','attr' => ['class' => 'bgform'],])
            ->add('plainPassword', PasswordType::class, [
                // instead of being set onto the object directly,
                // this is read and encoded in the controller
                'mapped' => false,
                'label'=>'Mot de passe',
                // 'attr' => ['autocomplete' => 'new-password'],
                'constraints' => [
                    new NotBlank([
                        'message' => 'Entrer un mot de passe',
                    ]),
                    new Length([
                        'min' => 8,
                        'minMessage' => 'Le mot de passe doit comporter au moins {{ limit }} caractères',
                        // max length allowed by Symfony for security reasons
                        'max' => 4096,
                    ]),
                ],
                'attr' => ['class' => 'rounded bgform m-4'],
            ])
            ->add('agreeTerms', CheckboxType::class, [
                'mapped' => false,
                'label' => 'Je suis d\'accord avec les conditions',
                'constraints' => [
                    new IsTrue([
                        'message' => 'Vous devez accepter nos conditions.',
                    ]),
                ],
                'attr' => ['class' => 'bgform'],
                'attr' => ['title' => 'Vous devez accepter nos conditions'],
            ])
            ->add('roles', ChoiceType::class,[ 
                'mapped' => false,
                'multiple' => true,
            'choices' => [
                'ADMNISTRATEUR' => 'ROLE_ADMIN',
                'CLIENT' => 'ROLE_CLIENT',
                'UTILISATEUR' => 'ROLE_USER',
            ],
                'label' => 'Role.s',
                'attr' => [
                    'class'=>'form-control'
                ],
                'row_attr' => [
                    'class' => 'col-5',
                    ],
                ]
            )
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => User::class,
        ]);
    }
}
