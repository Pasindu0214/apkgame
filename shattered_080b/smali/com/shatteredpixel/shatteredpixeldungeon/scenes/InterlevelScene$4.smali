.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$4;
.super Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndError;
.source "InterlevelScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndError;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->hide()V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene;

    invoke-static {v0}, Lcom/watabou/noosa/Game;->switchScene(Ljava/lang/Class;)V

    return-void
.end method
