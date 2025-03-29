.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero$2;
.super Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;
.source "DriedRose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero;

.field public final synthetic val$rose:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero;Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero;

    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero$2;->val$rose:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero$2;->val$rose:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    .line 2
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Placeholder;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ARMOR_HOLDER:I

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Placeholder;-><init>(I)V

    .line 4
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;->slot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->item(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero$2;->val$rose:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    .line 6
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    .line 7
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->doPickUp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero$2;->val$rose:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    .line 9
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    .line 10
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero$2;->val$rose:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    const/4 v1, 0x0

    .line 12
    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    goto :goto_0

    .line 13
    :cond_1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero$2$1;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero$2$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero$2;)V

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;->ARMOR:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "armor_prompt"

    .line 14
    invoke-static {v2, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-static {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->selectItem(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Mode;Ljava/lang/String;)Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;

    :goto_0
    return-void
.end method
