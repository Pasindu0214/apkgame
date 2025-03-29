.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress$2;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;
.source "WndGameInProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$info:Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress$2;->val$info:Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;

    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 4

    .line 1
    sget-object v0, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    iget-object v0, v0, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    .line 2
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndChallenges;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress$2;->val$info:Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;

    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->challenges:I

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndChallenges;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method
