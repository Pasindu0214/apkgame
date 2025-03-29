.class public Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;
.super Ljava/lang/Object;
.source "GamesInProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# instance fields
.field public armorTier:I

.field public challenges:I

.field public depth:I

.field public exp:I

.field public goldCollected:I

.field public heroClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

.field public hp:I

.field public ht:I

.field public level:I

.field public maxDepth:I

.field public shld:I

.field public slot:I

.field public str:I

.field public subClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
