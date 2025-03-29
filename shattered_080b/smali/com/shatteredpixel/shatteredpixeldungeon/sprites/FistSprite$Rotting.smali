.class public Lcom/shatteredpixel/shatteredpixeldungeon/sprites/FistSprite$Rotting;
.super Lcom/shatteredpixel/shatteredpixeldungeon/sprites/FistSprite;
.source "FistSprite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/sprites/FistSprite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rotting"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/FistSprite;-><init>()V

    const/16 v0, 0xe

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/FistSprite;->boltType:I

    return-void
.end method


# virtual methods
.method public blood()I
    .locals 1

    const v0, -0x47445f

    return v0
.end method

.method public createEmitter()Lcom/watabou/noosa/particles/Emitter;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    const/16 v1, 0x6b

    .line 2
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x3e800000    # 0.25f

    .line 3
    invoke-virtual {v0, v1, v3, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    return-object v0
.end method

.method public texOffset()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method
