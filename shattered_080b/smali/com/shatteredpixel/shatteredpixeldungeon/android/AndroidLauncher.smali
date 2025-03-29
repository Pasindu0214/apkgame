.class public Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidLauncher;
.super Landroid/app/Activity;
.source "AndroidLauncher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    :try_start_0
    invoke-static {}, La/b/a/r/c;->a()V

    .line 3
    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->a()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;

    .line 4
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/android/AndroidGame;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v1, "Shattered Pixel Dungeon cannot start because some of its code is missing!\n\nThis usually happens when the Google Play version of the game is installed from somewhere outside of Google Play.\n\nIf you\'re unsure of how to fix this, please email the developer (Evan@ShatteredPixel.com), and include this error message:\n\n"

    .line 8
    invoke-static {v1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41800000    # 16.0f

    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, -0x1

    .line 12
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v1, "pixel_font.ttf"

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 p1, 0x10

    .line 14
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/16 p1, 0xa

    .line 15
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 16
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    :goto_0
    return-void
.end method
