.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Blacksmith$1$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndQuest;
.source "Blacksmith.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Blacksmith$1;->call()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Blacksmith$1;Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/NPC;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndQuest;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/NPC;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->hide()V

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, La/b/a/e;->given:Z

    const/4 v1, 0x0

    .line 3
    sput-boolean v1, La/b/a/e;->completed:Z

    .line 4
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/Pickaxe;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/Pickaxe;-><init>()V

    .line 5
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->doPickUp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v2, "you_now_have"

    invoke-static {v3, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v0

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop()V

    :goto_0
    return-void
.end method
