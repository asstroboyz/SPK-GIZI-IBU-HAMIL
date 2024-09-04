    <?php

    use Illuminate\Database\Seeder;
    use App\Models\User;

    class UsersSeeder extends Seeder
    {
        /**
         * Run the database seeds.
         *
         * @return void
         */
        public function run()
        {
            $admin = User::create([
                'name' => 'Ikasandra',
                'username' => 'iksandra',
                'email' => 'iksandra@gmail.com',
                'password' => bcrypt('iksandra')
            ]);
            $admin->assignRole('superadmin');

            $user = User::create([
                'name' => 'User Iksandra',
                'username' => 'user',
                'email' => 'user@gmail.com',
                'password' => bcrypt('user')
            ]);
            $user->assignRole('admin');
            $user = User::create([
                'name' => 'admin',
                'username' => 'admin',
                'email' => 'admin@gmail.com',
                'password' => bcrypt('admin')
            ]);
            $user->assignRole('admin');
        }
    }
