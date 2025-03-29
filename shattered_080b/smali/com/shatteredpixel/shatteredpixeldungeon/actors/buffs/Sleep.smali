.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Sleep;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;
.source "Sleep.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;-><init>()V

    return-void
.end method


# virtual methods
.method public fx(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle()V

    :cond_0
    return-void
.end method
