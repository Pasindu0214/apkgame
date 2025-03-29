.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Imp$2;
.super Ljava/lang/Object;
.source "Imp.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Imp;

.field public final synthetic val$text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Imp;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Imp$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Imp;

    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Imp$2;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndQuest;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Imp$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Imp;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Imp$2;->val$text:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndQuest;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/NPC;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    return-void
.end method
