.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero$1$1;
.super Ljava/lang/Object;
.source "DriedRose.java"

# interfaces
.implements Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero$1;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero$1;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero$1$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 5

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero;

    instance-of v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-boolean v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->unique:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "cant_unique"

    .line 3
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero$1$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero$1;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->hide()V

    goto/16 :goto_1

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isIdentified()Z

    move-result v1

    if-nez v1, :cond_2

    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "cant_unidentified"

    .line 6
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero$1$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero$1;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->hide()V

    goto :goto_1

    .line 8
    :cond_2
    iget-boolean v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-eqz v1, :cond_3

    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "cant_cursed"

    .line 9
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero$1$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero$1;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->hide()V

    goto :goto_1

    .line 11
    :cond_3
    move-object v1, p1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->STRReq()I

    move-result v3

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero$1$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero$1;

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero$1;->val$rose:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghostStrength()I

    move-result v4

    if-le v3, v4, :cond_4

    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "cant_strength"

    .line 12
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero$1$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero$1;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->hide()V

    goto :goto_1

    .line 14
    :cond_4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v1, p1, v2, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;->doUnequip(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;ZZ)Z

    goto :goto_0

    .line 16
    :cond_5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 17
    :goto_0
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero$1$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero$1;

    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$WndGhostHero$1;->val$rose:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    .line 18
    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    .line 19
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;->slot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    iput-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->item(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    :goto_1
    return-void
.end method
