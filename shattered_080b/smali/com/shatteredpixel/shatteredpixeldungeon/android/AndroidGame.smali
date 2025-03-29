.class public Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidGame;
.super La/b/a/m/a/b;
.source "AndroidGame.java"


# static fields
.field public static instance:La/b/a/m/a/b;

.field public static view:Landroid/opengl/GLSurfaceView;


# instance fields
.field public support:Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, La/b/a/m/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sput-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidGame;->instance:La/b/a/m/a/b;

    const/4 p1, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/watabou/noosa/Game;->version:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "???"

    .line 4
    sput-object v0, Lcom/watabou/noosa/Game;->version:Ljava/lang/String;

    .line 5
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v0, Lcom/watabou/noosa/Game;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 6
    :catch_1
    sput p1, Lcom/watabou/noosa/Game;->versionCode:I

    .line 7
    :goto_1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/UpdateImpl;->supportsUpdates()Z

    .line 8
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/UpdateImpl;->updateChecker:Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/UpdateService;

    .line 9
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/Updates;->service:Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/UpdateService;

    .line 10
    sget-object v0, La/b/a/d$a;->e:La/b/a/d$a;

    .line 11
    sput-object v0, Lcom/watabou/utils/FileUtils;->defaultFileType:La/b/a/d$a;

    const-string v0, ""

    .line 12
    sput-object v0, Lcom/watabou/utils/FileUtils;->defaultPath:Ljava/lang/String;

    .line 13
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidGame;->instance:La/b/a/m/a/b;

    .line 14
    new-instance v1, La/b/a/m/a/t;

    const-string v2, "ShatteredPixelDungeon"

    invoke-virtual {v0, v2, p1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {v1, v0}, La/b/a/m/a/t;-><init>(Landroid/content/SharedPreferences;)V

    .line 15
    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->prefs:La/b/a/k;

    .line 16
    invoke-static {}, La/b/a/e;->landscape()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 17
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidGame;->instance:La/b/a/m/a/b;

    invoke-static {}, La/b/a/e;->landscape()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_2

    :cond_0
    const/4 v1, 0x7

    :goto_2
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 18
    :cond_1
    new-instance v0, La/b/a/m/a/d;

    invoke-direct {v0}, La/b/a/m/a/d;-><init>()V

    .line 19
    iput p1, v0, La/b/a/m/a/d;->e:I

    .line 20
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    const/16 v1, 0x8

    .line 21
    iput v1, v0, La/b/a/m/a/d;->c:I

    iput v1, v0, La/b/a/m/a/d;->b:I

    iput v1, v0, La/b/a/m/a/d;->a:I

    .line 22
    :cond_2
    iput-boolean p1, v0, La/b/a/m/a/d;->j:Z

    .line 23
    iput-boolean p1, v0, La/b/a/m/a/d;->h:Z

    .line 24
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;-><init>()V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidGame;->support:Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;

    .line 25
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->updateSystemUI()V

    .line 26
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/ShatteredPixelDungeon;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidGame;->support:Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;

    invoke-direct {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ShatteredPixelDungeon;-><init>(Lcom/watabou/utils/PlatformSupport;)V

    .line 27
    new-instance v2, La/b/a/m/a/e;

    invoke-direct {v2}, La/b/a/m/a/e;-><init>()V

    .line 28
    iput-object v2, p0, La/b/a/m/a/b;->applicationLogger:La/b/a/m/a/e;

    .line 29
    new-instance v2, La/b/a/m/a/l;

    iget-object v3, v0, La/b/a/m/a/d;->r:La/b/a/m/a/y/f;

    if-nez v3, :cond_3

    new-instance v3, La/b/a/m/a/y/a;

    invoke-direct {v3}, La/b/a/m/a/y/a;-><init>()V

    :cond_3
    invoke-direct {v2, p0, v0, v3}, La/b/a/m/a/l;-><init>(La/b/a/m/a/c;La/b/a/m/a/d;La/b/a/m/a/y/f;)V

    iput-object v2, p0, La/b/a/m/a/b;->graphics:La/b/a/m/a/l;

    .line 30
    iget-object v2, v2, La/b/a/m/a/l;->a:Landroid/view/View;

    .line 31
    :try_start_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xc

    if-lt v3, v4, :cond_4

    const-string v3, "a.b.a.m.a.n"

    .line 32
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    goto :goto_3

    :cond_4
    const-string v3, "a.b.a.m.a.m"

    .line 33
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    :goto_3
    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Class;

    .line 34
    const-class v6, La/b/a/a;

    aput-object v6, v5, p1

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/Object;

    const/4 v8, 0x2

    aput-object v6, v5, v8

    const-class v6, La/b/a/m/a/d;

    const/4 v9, 0x3

    aput-object v6, v5, v9

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, p1

    aput-object p0, v4, v7

    aput-object v2, v4, v8

    aput-object v0, v4, v9

    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/b/a/m/a/m;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 36
    iput-object v2, p0, La/b/a/m/a/b;->input:La/b/a/m/a/m;

    .line 37
    new-instance v2, La/b/a/m/a/f;

    invoke-direct {v2, p0, v0}, La/b/a/m/a/f;-><init>(Landroid/content/Context;La/b/a/m/a/d;)V

    iput-object v2, p0, La/b/a/m/a/b;->audio:La/b/a/m/a/f;

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    .line 39
    new-instance v2, La/b/a/m/a/i;

    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, La/b/a/m/a/i;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    iput-object v2, p0, La/b/a/m/a/b;->files:La/b/a/m/a/i;

    .line 40
    new-instance v2, La/b/a/m/a/s;

    invoke-direct {v2, p0, v0}, La/b/a/m/a/s;-><init>(La/b/a/m/a/c;La/b/a/m/a/d;)V

    iput-object v2, p0, La/b/a/m/a/b;->net:La/b/a/m/a/s;

    .line 41
    iput-object v1, p0, La/b/a/m/a/b;->listener:La/b/a/b;

    .line 42
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, La/b/a/m/a/b;->handler:Landroid/os/Handler;

    .line 43
    iget-boolean v1, v0, La/b/a/m/a/d;->s:Z

    iput-boolean v1, p0, La/b/a/m/a/b;->useImmersiveMode:Z

    .line 44
    iget-boolean v1, v0, La/b/a/m/a/d;->o:Z

    iput-boolean v1, p0, La/b/a/m/a/b;->hideStatusBar:Z

    .line 45
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "clipboard"

    const/16 v3, 0xb

    if-ge v1, v3, :cond_5

    .line 46
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/ClipboardManager;

    goto :goto_4

    .line 47
    :cond_5
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 48
    :goto_4
    new-instance v1, La/b/a/m/a/a;

    invoke-direct {v1, p0}, La/b/a/m/a/a;-><init>(La/b/a/m/a/b;)V

    invoke-virtual {p0, v1}, La/b/a/m/a/b;->addLifecycleListener(La/b/a/i;)V

    .line 49
    sput-object p0, La/b/a/e;->a:La/b/a/a;

    .line 50
    iget-object v1, p0, La/b/a/m/a/b;->input:La/b/a/m/a/m;

    .line 51
    sput-object v1, La/b/a/e;->d:La/b/a/g;

    .line 52
    iget-object v1, p0, La/b/a/m/a/b;->audio:La/b/a/m/a/f;

    .line 53
    sput-object v1, La/b/a/e;->c:La/b/a/c;

    .line 54
    iget-object v1, p0, La/b/a/m/a/b;->files:La/b/a/m/a/i;

    .line 55
    sput-object v1, La/b/a/e;->e:La/b/a/d;

    .line 56
    iget-object v1, p0, La/b/a/m/a/b;->graphics:La/b/a/m/a/l;

    .line 57
    sput-object v1, La/b/a/e;->b:La/b/a/f;

    .line 58
    iget-object v1, p0, La/b/a/m/a/b;->net:La/b/a/m/a/s;

    .line 59
    sput-object v1, La/b/a/e;->f:La/b/a/j;

    const-string v1, "AndroidApplication"

    .line 60
    :try_start_3
    invoke-virtual {p0, v7}, Landroid/app/Activity;->requestWindowFeature(I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception v2

    const-string v3, "Content already displayed, cannot request FEATURE_NO_TITLE"

    .line 61
    invoke-virtual {p0, v1, v3, v2}, La/b/a/m/a/b;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    :goto_5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x800

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 64
    iget-object v2, p0, La/b/a/m/a/b;->graphics:La/b/a/m/a/l;

    .line 65
    iget-object v2, v2, La/b/a/m/a/l;->a:Landroid/view/View;

    .line 66
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    .line 67
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 68
    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    iget-boolean v0, v0, La/b/a/m/a/d;->n:Z

    if-eqz v0, :cond_6

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 71
    :cond_6
    iget-boolean v0, p0, La/b/a/m/a/b;->hideStatusBar:Z

    invoke-virtual {p0, v0}, La/b/a/m/a/b;->hideStatusBar(Z)V

    .line 72
    iget-boolean v0, p0, La/b/a/m/a/b;->useImmersiveMode:Z

    invoke-virtual {p0, v0}, La/b/a/m/a/b;->useImmersiveMode(Z)V

    .line 73
    iget-boolean v0, p0, La/b/a/m/a/b;->useImmersiveMode:Z

    if-eqz v0, :cond_7

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_7

    :try_start_4
    const-string v0, "a.b.a.m.a.w"

    .line 75
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "createListener"

    new-array v4, v7, [Ljava/lang/Class;

    .line 77
    const-class v5, La/b/a/m/a/c;

    aput-object v5, v4, p1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p0, v3, p1

    .line 78
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    :catch_3
    move-exception p1

    const-string v0, "Failed to create AndroidVisibilityListener"

    .line 79
    invoke-virtual {p0, v1, v0, p1}, La/b/a/m/a/b;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    :cond_7
    :goto_6
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq p1, v7, :cond_8

    .line 81
    iget-object p1, p0, La/b/a/m/a/b;->input:La/b/a/m/a/m;

    .line 82
    iput-boolean v7, p1, La/b/a/m/a/m;->E:Z

    .line 83
    :cond_8
    iget-object p1, p0, La/b/a/m/a/b;->graphics:La/b/a/m/a/l;

    .line 84
    iget-object p1, p1, La/b/a/m/a/l;->a:Landroid/view/View;

    .line 85
    check-cast p1, Landroid/opengl/GLSurfaceView;

    sput-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidGame;->view:Landroid/opengl/GLSurfaceView;

    return-void

    :catch_4
    move-exception p1

    .line 86
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Couldn\'t construct AndroidInput, this should never happen"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onMultiWindowModeChanged(Z)V

    .line 2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidGame;->support:Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->updateSystemUI()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, La/b/a/m/a/b;->onWindowFocusChanged(Z)V

    .line 2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidGame;->support:Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->updateSystemUI()V

    return-void
.end method
