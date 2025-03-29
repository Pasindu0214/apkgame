.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$2;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;
.source "WndStartGame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame;Lcom/watabou/noosa/Image;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;-><init>(Lcom/watabou/noosa/Image;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 4

    .line 1
    sget-object v0, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    iget-object v0, v0, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    .line 2
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$2$1;

    invoke-static {}, La/b/a/e;->challenges()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$2$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$2;IZ)V

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->addToFront(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method

.method public update()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->selectedClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/watabou/noosa/ui/Button;->update()V

    return-void
.end method
