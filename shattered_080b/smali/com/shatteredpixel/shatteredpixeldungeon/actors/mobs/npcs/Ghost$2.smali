.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$2;
.super Ljava/lang/Object;
.source "Ghost.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost;->interact(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    .line 1
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->type:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndQuest;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "rat_2"

    invoke-static {v1, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndQuest;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/NPC;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndQuest;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "crab_2"

    invoke-static {v1, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndQuest;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/NPC;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndQuest;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "gnoll_2"

    invoke-static {v1, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndQuest;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/NPC;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    :goto_0
    return-void
.end method
