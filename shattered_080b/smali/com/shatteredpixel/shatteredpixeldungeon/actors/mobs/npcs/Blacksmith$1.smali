.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Blacksmith$1;
.super Ljava/lang/Object;
.source "Blacksmith.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Blacksmith;->interact(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Blacksmith;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Blacksmith;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Blacksmith$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Blacksmith;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Blacksmith$1$1;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Blacksmith$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Blacksmith;

    .line 2
    sget-boolean v2, La/b/a/e;->alternative:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "blood_1"

    .line 3
    invoke-static {v1, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "gold_1"

    invoke-static {v1, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-direct {v0, p0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Blacksmith$1$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Blacksmith$1;Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/NPC;Ljava/lang/String;)V

    .line 4
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    return-void
.end method
