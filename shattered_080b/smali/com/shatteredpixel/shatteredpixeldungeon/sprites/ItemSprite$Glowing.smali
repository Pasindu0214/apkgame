.class public Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;
.super Ljava/lang/Object;
.source "ItemSprite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Glowing"
.end annotation


# instance fields
.field public blue:F

.field public color:I

.field public green:F

.field public period:F

.field public red:F


# direct methods
.method public constructor <init>(IF)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;->color:I

    shr-int/lit8 v0, p1, 0x10

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;->red:F

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;->green:F

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    div-float/2addr p1, v1

    .line 5
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;->blue:F

    .line 6
    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;->period:F

    return-void
.end method
