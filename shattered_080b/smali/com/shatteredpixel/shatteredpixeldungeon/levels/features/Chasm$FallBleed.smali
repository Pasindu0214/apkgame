.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Chasm$FallBleed;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Bleeding;
.source "Chasm.java"

# interfaces
.implements Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero$Doom;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Chasm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FallBleed"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Bleeding;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeath()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->validateDeathFromFalling()V

    return-void
.end method
