.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/TenguDartTrap;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap;
.source "TenguDartTrap.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/PoisonDartTrap;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->canBeHidden:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->canBeSearched:Z

    return-void
.end method


# virtual methods
.method public canTarget(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewTengu;

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public poisonAmount()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method
