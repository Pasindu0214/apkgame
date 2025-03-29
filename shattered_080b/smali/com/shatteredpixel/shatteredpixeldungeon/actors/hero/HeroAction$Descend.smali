.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Descend;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;
.source "HeroAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Descend"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;-><init>()V

    .line 2
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;->dst:I

    return-void
.end method
