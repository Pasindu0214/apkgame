.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;
.source "WndStartGame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$slot:I


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$1;->val$slot:I

    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->selectedClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$1;->val$slot:I

    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->curSlot:I

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 4
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator;->action:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ActionIndicator$Action;

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;->DESCEND:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    const/4 v0, 0x1

    const-string v1, "intro"

    .line 6
    invoke-static {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 7
    invoke-static {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->put(Ljava/lang/String;Z)V

    .line 8
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/IntroScene;

    invoke-static {v0}, Lcom/watabou/noosa/Game;->switchScene(Ljava/lang/Class;)V

    goto :goto_0

    .line 9
    :cond_1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;

    invoke-static {v0}, Lcom/watabou/noosa/Game;->switchScene(Ljava/lang/Class;)V

    :goto_0
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
