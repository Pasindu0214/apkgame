.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfHealing;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;
.source "PotionOfHealing.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;-><init>()V

    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->initials:Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->bones:Z

    return-void
.end method

.method public static cure(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 1

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Poison;

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Cripple;

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)V

    .line 3
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Weakness;

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)V

    .line 4
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Vulnerable;

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)V

    .line 5
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Bleeding;

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)V

    .line 6
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Blindness;

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)V

    .line 7
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Drowsy;

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)V

    .line 8
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Slow;

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)V

    .line 9
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Vertigo;

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->setKnown()V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Healing;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Healing;

    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    int-to-float v1, v1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float v1, v1, v2

    const/high16 v2, 0x41600000    # 14.0f

    add-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-virtual {v0, v1, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Healing;->setHeal(IFI)V

    .line 3
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfHealing;->cure(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "heal"

    .line 4
    invoke-static {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public price()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->isKnown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    :goto_0
    mul-int/lit8 v0, v0, 0x1e

    goto :goto_1

    .line 2
    :cond_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    goto :goto_0

    :goto_1
    return v0
.end method
