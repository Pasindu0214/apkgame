.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental$ChaosElemental;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental;
.source "Elemental.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChaosElemental"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental;-><init>()V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ElementalSprite$Chaos;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->spriteClass:Ljava/lang/Class;

    .line 3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTransmutation;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTransmutation;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->loot:Ljava/lang/Object;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->lootChance:F

    return-void
.end method


# virtual methods
.method public meleeProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V
    .locals 2

    .line 1
    new-instance p2, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    const/4 v1, 0x6

    invoke-direct {p2, v0, p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;-><init>(III)V

    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental$ChaosElemental$1;

    invoke-direct {p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental$ChaosElemental$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental$ChaosElemental;)V

    const/4 v0, 0x0

    invoke-static {v0, p0, p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand;->cursedZap(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/watabou/utils/Callback;)V

    return-void
.end method

.method public rangedProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    const/4 v2, 0x6

    invoke-direct {v0, v1, p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;-><init>(III)V

    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental$ChaosElemental$2;

    invoke-direct {p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental$ChaosElemental$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental$ChaosElemental;)V

    const/4 v1, 0x0

    invoke-static {v1, p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand;->cursedZap(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/watabou/utils/Callback;)V

    return-void
.end method
