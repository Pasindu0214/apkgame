.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AmuletScene$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;
.source "AmuletScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AmuletScene;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AmuletScene;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Amulet;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->win(Ljava/lang/Class;)V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->curSlot:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->deleteGame(IZ)V

    .line 3
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene;

    invoke-static {v0}, Lcom/watabou/noosa/Game;->switchScene(Ljava/lang/Class;)V

    return-void
.end method
