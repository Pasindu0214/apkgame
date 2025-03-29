.class public Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport$3;
.super Ljava/lang/Object;
.source "AndroidPlatformSupport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;->updateSystemUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidPlatformSupport;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_1

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidGame;->instance:La/b/a/m/a/b;

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/16 v2, 0xc00

    if-eqz v0, :cond_2

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidGame;->instance:La/b/a/m/a/b;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x400

    invoke-virtual {v0, v3, v2}, Landroid/view/Window;->setFlags(II)V

    goto :goto_2

    .line 4
    :cond_2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidGame;->instance:La/b/a/m/a/b;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x800

    invoke-virtual {v0, v3, v2}, Landroid/view/Window;->setFlags(II)V

    .line 5
    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_4

    const-string v0, "fullscreen"

    .line 6
    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidGame;->instance:La/b/a/m/a/b;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_3

    .line 8
    :cond_3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidGame;->instance:La/b/a/m/a/b;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_4
    :goto_3
    return-void
.end method
