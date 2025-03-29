.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$DKBarrior;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Barrier;
.source "DwarfKing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DKBarrior"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Barrier;-><init>()V

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;->shielding:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;->shielding:I

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iput-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->needsShieldUpdate:Z

    .line 3
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;->absorbDamage(I)I

    .line 4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;->shielding:I

    if-gtz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;->detach()V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V

    return v1
.end method

.method public icon()I
    .locals 1

    const/16 v0, 0x3f

    return v0
.end method
