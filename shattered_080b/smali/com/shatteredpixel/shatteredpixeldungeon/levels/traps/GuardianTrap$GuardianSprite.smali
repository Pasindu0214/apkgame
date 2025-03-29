.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GuardianTrap$GuardianSprite;
.super Lcom/shatteredpixel/shatteredpixeldungeon/sprites/StatueSprite;
.source "GuardianTrap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GuardianTrap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GuardianSprite"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/StatueSprite;-><init>()V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e4ccccd    # 0.2f

    .line 2
    invoke-virtual {p0, v0, v0, v1, v2}, Lcom/watabou/noosa/Visual;->tint(FFFF)V

    return-void
.end method


# virtual methods
.method public resetColor()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->resetColor()V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e4ccccd    # 0.2f

    .line 2
    invoke-virtual {p0, v0, v0, v1, v2}, Lcom/watabou/noosa/Visual;->tint(FFFF)V

    return-void
.end method
