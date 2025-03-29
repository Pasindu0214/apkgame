.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack$1;
.super Ljava/lang/Object;
.source "HeavyBoomerang.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack;->act()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack;

.field public final synthetic val$returnTarget:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

.field public final synthetic val$target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack;

    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack$1;->val$returnTarget:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iput-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack$1;->val$target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack$1;->val$returnTarget:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack$1;->val$target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-ne v0, v1, :cond_1

    .line 2
    instance-of v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack;

    .line 3
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack;->boomerang:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    .line 4
    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->doPickUp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack$1;->val$target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spend(F)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack;

    .line 7
    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack;->boomerang:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    .line 8
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack;->returnPos:I

    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v0

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop()V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_3

    .line 10
    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack;

    .line 11
    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack;->boomerang:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    .line 12
    invoke-virtual {v1, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->shoot(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack;

    .line 14
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack;->boomerang:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    .line 15
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->decrementDurability()V

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack;

    .line 17
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack;->boomerang:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    .line 18
    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->durability:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 19
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 20
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack;->returnPos:I

    .line 21
    invoke-virtual {v2, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v0

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop()V

    goto :goto_0

    .line 22
    :cond_3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack;

    .line 23
    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack;->boomerang:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    .line 24
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack;->returnPos:I

    .line 25
    invoke-virtual {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v0

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop()V

    .line 26
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang$CircleBack;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->next()V

    return-void
.end method
