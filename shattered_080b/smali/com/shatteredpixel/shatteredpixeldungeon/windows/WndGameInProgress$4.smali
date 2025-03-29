.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress$4;
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
.field public final synthetic val$slot:I


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress$4;->val$slot:I

    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 9

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress;

    sget-object v1, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    iget-object v1, v1, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    .line 2
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress$4$1;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "erase_warn_title"

    .line 3
    invoke-static {v0, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "erase_warn_body"

    .line 4
    invoke-static {v0, v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    new-array v7, v3, [Ljava/lang/Object;

    const-string v8, "erase_warn_yes"

    .line 5
    invoke-static {v0, v8, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v7, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v8, "erase_warn_no"

    .line 6
    invoke-static {v0, v8, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-direct {v2, p0, v4, v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress$4$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress$4;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method
