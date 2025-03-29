.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$2$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndChallenges;
.source "WndStartGame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$2;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$2;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$2;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$2$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$2;

    invoke-direct {p0, p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndChallenges;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndChallenges;->onBackPressed()V

    .line 2
    iget-object v0, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$2$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$2;

    invoke-static {}, La/b/a/e;->challenges()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->CHALLENGE_ON:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->CHALLENGE_OFF:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    :goto_0
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;->icon(Lcom/watabou/noosa/Image;)V

    :cond_1
    return-void
.end method
