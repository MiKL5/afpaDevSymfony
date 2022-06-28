<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
/**
 * @Route("/profil")
 * @method render(string $string, array $array)
 */
// class ProfilController extends AbstractController
// {
//     #[Route('/profil', name: 'app_profil')]
//     public function index(): Response
//     {
//         return $this->render('profil/index.html.twig', [
//             'controller_name' => 'ProfilController',
//         ]);
//     }
// }
class ProfilController extends AbstractController
{
    /**
     * @Route("/detail", name="profil")
     */
    public function detail() :Response
    {
        // affichage de la page d'accueil
        return $this->render('profil/detail.html.twig');
    }
}