.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndImp$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;
.source "WndImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndImp;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Imp;Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/DwarfToken;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndImp;

.field public final synthetic val$imp:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Imp;

.field public final synthetic val$tokens:Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/DwarfToken;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndImp;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Imp;Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/DwarfToken;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndImp$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndImp;

    iput-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndImp$1;->val$imp:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Imp;

    iput-object p4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndImp$1;->val$tokens:Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/DwarfToken;

    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndImp$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndImp;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndImp$1;->val$imp:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Imp;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndImp$1;->val$tokens:Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/DwarfToken;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->reward:Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;

    .line 2
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->hide()V

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detachAll(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    if-nez v3, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v3, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->doPickUp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    const-string v3, "you_now_have"

    invoke-static {v0, v3, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v5, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, v3, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v0

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop()V

    :goto_0
    const/4 v0, 0x0

    if-eqz v1, :cond_2

    new-array v3, v4, [Ljava/lang/Object;

    .line 8
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 9
    invoke-virtual {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->className()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    const-string v2, "cya"

    .line 10
    invoke-static {v1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->destroy()V

    .line 12
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die()V

    .line 13
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->reward:Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;

    .line 14
    sput-boolean v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->completed:Z

    .line 15
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;->IMP:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->remove(Lcom/shatteredpixel/shatteredpixeldungeon/journal/Notes$Landmark;)Z

    :goto_1
    return-void

    .line 16
    :cond_2
    throw v0
.end method
