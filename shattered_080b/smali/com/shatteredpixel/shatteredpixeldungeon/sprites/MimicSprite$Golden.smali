.class public Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MimicSprite$Golden;
.super Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MimicSprite;
.source "MimicSprite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MimicSprite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Golden"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MimicSprite;-><init>()V

    return-void
.end method


# virtual methods
.method public texOffset()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method
