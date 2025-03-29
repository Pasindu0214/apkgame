.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;
.source "SpiritBow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpiritArrow"
.end annotation


# instance fields
.field public flurryCount:I

.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;

    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;-><init>()V

    .line 2
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->SPIRIT_ARROW:I

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow;->flurryCount:I

    return-void
.end method


# virtual methods
.method public STRReq(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;->STRReq(I)I

    move-result p1

    return p1
.end method

.method public accuracyFactor(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;

    iget-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;->sniperSpecial:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->augment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;->DAMAGE:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;

    if-ne v0, v1, :cond_0

    const/high16 p1, 0x7f800000    # Float.POSITIVE_INFINITY

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->accuracyFactor(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)F

    move-result p1

    return p1
.end method

.method public cast(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;I)V
    .locals 11

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->throwPos(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;I)I

    move-result v7

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;

    .line 3
    iput v7, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;->targetPos:I

    .line 4
    iget-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;->sniperSpecial:Z

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->augment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;->SPEED:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;

    if-ne v0, v1, :cond_3

    .line 5
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow;->flurryCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow;->flurryCount:I

    .line 6
    :cond_0
    invoke-static {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v2

    const/4 v0, 0x0

    if-nez v2, :cond_1

    .line 7
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->speedFactor(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)F

    move-result p2

    .line 8
    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spendAndNext(F)V

    .line 9
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;

    iput-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;->sniperSpecial:Z

    .line 10
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow;->flurryCount:I

    return-void

    .line 11
    :cond_1
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->target(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 12
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow;->flurryCount:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 13
    :goto_0
    iput-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready:Z

    .line 14
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3fc00000    # 1.5f

    const v3, 0x3f19999a    # 0.6f

    const-string v4, "snd_miss.mp3"

    invoke-virtual {v0, v4, v3, v3, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 15
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v0, v0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MissileSprite;

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MissileSprite;

    iget-object v9, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    new-instance v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow$1;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    move v4, v7

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;IZI)V

    .line 16
    invoke-virtual {v8, v9, v7, p0, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MissileSprite;->reset(Lcom/watabou/noosa/Visual;ILcom/shatteredpixel/shatteredpixeldungeon/items/Item;Lcom/watabou/utils/Callback;)V

    .line 17
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow;Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;I)V

    .line 18
    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->animCallback:Lcom/watabou/utils/Callback;

    .line 19
    invoke-virtual {v0, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->zap(I)V

    goto :goto_1

    .line 20
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/EquipableItem;->cast(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;I)V

    :goto_1
    return-void
.end method

.method public damageRoll(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;->damageRoll(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result p1

    return p1
.end method

.method public hasEnchant(Ljava/lang/Class;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;",
            ">;",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;

    invoke-virtual {v0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->hasEnchant(Ljava/lang/Class;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result p1

    return p1
.end method

.method public onThrow(I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    const/4 v1, 0x1

    const v2, -0x33660001    # -8.0740344E7f

    if-eqz v0, :cond_2

    .line 2
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v3, v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->shoot(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {p1, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Splash;->at(III)V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;

    iget-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;->sniperSpecial:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->augment:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;->SPEED:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Augment;

    if-eq v0, v1, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;->sniperSpecial:Z

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->parent:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    .line 7
    invoke-static {p1, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Splash;->at(III)V

    :cond_3
    :goto_1
    return-void
.end method

.method public proc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->proc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I

    move-result p1

    return p1
.end method

.method public speedFactor(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow;->speedFactor(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)F

    move-result p1

    return p1
.end method
