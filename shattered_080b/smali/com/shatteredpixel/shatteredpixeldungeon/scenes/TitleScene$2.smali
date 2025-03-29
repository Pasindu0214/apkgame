.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene$2;
.super Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene$TitleButton;
.source "TitleScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene;

    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene$TitleButton;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->checkAll()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene;

    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    goto :goto_0

    .line 3
    :cond_0
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ShatteredPixelDungeon;->switchNoFade(Ljava/lang/Class;)V

    :goto_0
    return-void
.end method

.method public onLongClick()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene;

    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
