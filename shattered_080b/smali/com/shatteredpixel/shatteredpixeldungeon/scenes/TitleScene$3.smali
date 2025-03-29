.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene$3;
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


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene$TitleButton;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 8

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene;

    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene$3$1;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "support"

    invoke-static {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "patreon_body"

    .line 2
    invoke-static {v0, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "patreon_button"

    .line 3
    invoke-static {v0, v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-direct {v1, p0, v3, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene$3$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene$3;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method
