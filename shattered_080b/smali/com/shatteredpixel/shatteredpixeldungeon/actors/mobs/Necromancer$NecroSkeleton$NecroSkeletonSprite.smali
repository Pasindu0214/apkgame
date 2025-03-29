.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$NecroSkeleton$NecroSkeletonSprite;
.super Lcom/shatteredpixel/shatteredpixeldungeon/sprites/SkeletonSprite;
.source "Necromancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Necromancer$NecroSkeleton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NecroSkeletonSprite"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/SkeletonSprite;-><init>()V

    const/high16 v0, 0x3f400000    # 0.75f

    .line 2
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Visual;->brightness(F)V

    return-void
.end method


# virtual methods
.method public resetColor()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->resetColor()V

    const/high16 v0, 0x3f400000    # 0.75f

    .line 2
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Visual;->brightness(F)V

    return-void
.end method
