.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;
.source "FlavourBuff.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;-><init>()V

    return-void
.end method

.method public static greyIcon(Lcom/watabou/noosa/Image;FF)V
    .locals 3

    cmpl-float v0, p2, p1

    if-ltz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/watabou/noosa/Visual;->resetColor()V

    goto :goto_0

    :cond_0
    const v0, 0xb3b3b3

    const v1, 0x3f19999a    # 0.6f

    const v2, 0x3e99999a    # 0.3f

    sub-float p2, p1, p2

    mul-float p2, p2, v2

    div-float/2addr p2, p1

    add-float/2addr p2, v1

    .line 2
    invoke-virtual {p0, v0, p2}, Lcom/watabou/noosa/Visual;->tint(IF)V

    :goto_0
    return-void
.end method


# virtual methods
.method public act()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    const/4 v0, 0x1

    return v0
.end method

.method public dispTurns()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->cooldown()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->dispTurns(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
