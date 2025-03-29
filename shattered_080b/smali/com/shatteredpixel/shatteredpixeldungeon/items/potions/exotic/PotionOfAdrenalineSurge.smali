.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfAdrenalineSurge;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;
.source "PotionOfAdrenalineSurge.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;-><init>()V

    const/16 v0, 0xa

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->initials:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public apply(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion;->setKnown()V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/AdrenalineSurge;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/AdrenalineSurge;

    const/4 v0, 0x2

    .line 3
    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/AdrenalineSurge;->boost:I

    const/high16 v0, 0x44480000    # 800.0f

    .line 4
    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/AdrenalineSurge;->interval:F

    .line 5
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->cooldown()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V

    return-void
.end method
