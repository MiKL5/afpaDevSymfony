<?php

namespace App\Form;

use App\Entity\User;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Validator\Constraints\Length;
use Symfony\Component\Validator\Constraints\NotBlank;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;

class UserType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
        ->add('email', TextType::class, [
            'required' => true,
            'row_attr' => [
                'class' => 'col-6 ml-3',
                ],
            ])

        ->add('roles', ChoiceType::class, [
            'choices' => (array)[
                'ROLE_ADMIN' => 'ROLE_ADMIN', // Touts les pouveoirs
                'ROLE_CLIENT' => 'ROLE_CLIENT', // use shopping cart
                'ROLE_USER' => 'ROLE_USER', // visitor
            ],
            'mapped' => false,
            'multiple' => true,
            'help' => 'Maintain Ctrl to select multiple roles',
            'required' => true,
            'row_attr' => [
                'class' => 'col-6 ml-3',
                ],
            ])

        ->add('plainPassword', PasswordType::class, [
            // instead of being set onto the object directly,
            // this is read and encoded in the controller
            'mapped' => false,
            'attr' => ['autocomplete' => 'new-password'],
            'required' => true,
            'row_attr' => [
                'class' => 'col-6 ml-3',
                ],
            'constraints' => [
                new NotBlank([
                    'message' => 'Please enter a password',
                ]),
                new Length([
                    'min' => 6,
                    'minMessage' => 'Your password should be at least {{ limit }} characters',
                    // max length allowed by Symfony for security reasons
                    'max' => 4096,
                ]),
            ],
        ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => User::class,
        ]);
    }
}
