<?php

namespace App\Form;

use App\Entity\User;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;

class UserType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name')
            ->add('firstname')
            ->add('email')
            ->add('roles', ChoiceType::class, [
                'choices' => (array)[
                    'ADMNISTRATEUR' => 'ROLE_ADMIN',
                    'CLIENT' => 'ROLE_CLIENT',
                    'UTILISATEUR' => 'ROLE_USER',
                ],
                'mapped' => false,
                'multiple' => true,
                'help' => 'Maintenez Ctrl pour choisir plusieurs roles',
                'required' => true,
                'row_attr' => [
                    'class' => 'col-6 ml-3 rounded',
                    ],
                ])

            ->add('password')
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => User::class,
        ]);
    }
}
