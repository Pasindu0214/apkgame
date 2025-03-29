.class public Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidBackupHandler;
.super Landroid/app/backup/BackupAgent;
.source "AndroidBackupHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    return-void
.end method

.method public static getFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    return-void
.end method

.method public onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/backup/BackupAgent;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/shared_prefs/ShatteredPixelDungeon.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Landroid/app/backup/BackupAgent;->fullBackupFile(Ljava/io/File;Landroid/app/backup/FullBackupDataOutput;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/backup/BackupAgent;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "rankings.dat"

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidBackupHandler;->getFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/app/backup/BackupAgent;->fullBackupFile(Ljava/io/File;Landroid/app/backup/FullBackupDataOutput;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/backup/BackupAgent;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "badges.dat"

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidBackupHandler;->getFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, v0, p1}, Landroid/app/backup/BackupAgent;->fullBackupFile(Ljava/io/File;Landroid/app/backup/FullBackupDataOutput;)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/app/backup/BackupAgent;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "journal.dat"

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidBackupHandler;->getFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0, v0, p1}, Landroid/app/backup/BackupAgent;->fullBackupFile(Ljava/io/File;Landroid/app/backup/FullBackupDataOutput;)V

    :cond_2
    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 0

    return-void
.end method
