.class public Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ElementalSprite$Fire;
.super Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ElementalSprite;
.source "ElementalSprite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ElementalSprite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fire"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ElementalSprite;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ElementalSprite;->boltType:I

    return-void
.end method


# virtual methods
.method public blood()I
    .locals 1

    const/16 v0, -0x44cd

    return v0
.end method

.method public createEmitter()Lcom/watabou/noosa/particles/Emitter;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/FlameParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/4 v2, 0x0

    const v3, 0x3d75c28f    # 0.06f

    .line 3
    invoke-virtual {v0, v1, v3, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    return-object v0
.end method

.method public texOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
