.class public Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ShamanSprite$Purple;
.super Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ShamanSprite;
.source "ShamanSprite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ShamanSprite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Purple"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ShamanSprite;-><init>()V

    const/16 v0, 0xd

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ShamanSprite;->boltType:I

    return-void
.end method


# virtual methods
.method public texOffset()I
    .locals 1

    const/16 v0, 0x2a

    return v0
.end method
