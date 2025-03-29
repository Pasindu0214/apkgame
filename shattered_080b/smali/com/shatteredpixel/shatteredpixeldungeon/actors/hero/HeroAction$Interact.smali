.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Interact;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;
.source "HeroAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Interact"
.end annotation


# instance fields
.field public ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroAction$Interact;->ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    return-void
.end method
