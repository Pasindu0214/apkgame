.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/IceBlock;
.super Lcom/watabou/noosa/Gizmo;
.source "IceBlock.java"


# instance fields
.field public phase:F

.field public target:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/Gizmo;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/IceBlock;->target:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/IceBlock;->phase:F

    return-void
.end method


# virtual methods
.method public update()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/IceBlock;->phase:F

    sget v1, Lcom/watabou/noosa/Game;->elapsed:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    add-float/2addr v1, v0

    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/IceBlock;->phase:F

    const/high16 v0, 0x3f800000    # 1.0f

    const v2, 0x3f19999a    # 0.6f

    const v3, 0x3faa3d71    # 1.33f

    const v4, 0x3f95c28f    # 1.17f

    const v5, 0x3f547ae1    # 0.83f

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/IceBlock;->target:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    mul-float v1, v1, v2

    invoke-virtual {v0, v5, v4, v3, v1}, Lcom/watabou/noosa/Visual;->tint(FFFF)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/IceBlock;->target:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0, v5, v4, v3, v2}, Lcom/watabou/noosa/Visual;->tint(FFFF)V

    :goto_0
    return-void
.end method
