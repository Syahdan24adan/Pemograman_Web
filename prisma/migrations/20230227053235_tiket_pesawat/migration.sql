-- CreateTable
CREATE TABLE `TiketPesawat` (
    `NomorPenerbangan` INTEGER NOT NULL AUTO_INCREMENT,
    `WaktuPenerbangan` DATETIME(3) NOT NULL,
    `KotaAsal` VARCHAR(191) NOT NULL,
    `KotaTujuan` VARCHAR(191) NOT NULL,
    `NamaPenumpang` VARCHAR(191) NOT NULL,
    `JenisKelamin` VARCHAR(191) NOT NULL,
    `NomorKursi` INTEGER NOT NULL,
    `HargaTiket` INTEGER NOT NULL,


    PRIMARY KEY (`idTiketPesawat`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
