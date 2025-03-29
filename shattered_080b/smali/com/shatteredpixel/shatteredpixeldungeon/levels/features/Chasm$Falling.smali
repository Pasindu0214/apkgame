.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Chasm$Falling;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;
.source "Chasm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Chasm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Falling"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;-><init>()V

    const/16 v0, 0x64

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->actPriority:I

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 5

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 2
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/FeatherFall$FeatherBuff;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/FeatherFall$FeatherBuff;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    goto :goto_1

    .line 4
    :cond_0
    sget-object v1, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    const/high16 v2, 0x40800000    # 4.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Lcom/watabou/noosa/Camera;->shake(FF)V

    .line 5
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->occupyCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 6
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Cripple;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->prolong(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    .line 7
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Chasm$FallBleed;

    .line 8
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->append(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v2

    .line 10
    :goto_0
    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Chasm$FallBleed;

    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    int-to-float v1, v1

    iget v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    const/high16 v4, 0x40c00000    # 6.0f

    mul-float v3, v3, v4

    add-float/2addr v3, v4

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Bleeding;->set(F)V

    .line 11
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    div-int/lit8 v1, v1, 0x2

    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    div-int/lit8 v2, v2, 0x4

    invoke-static {v1, v2}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Chasm$2;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Chasm$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->damage(ILjava/lang/Object;)V

    .line 12
    :goto_1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    const/4 v0, 0x1

    return v0
.end method
