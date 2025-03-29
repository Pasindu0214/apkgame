.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Lucky$LuckProc;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;
.source "Lucky.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Lucky;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LuckProc"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;-><init>()V

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    const/4 v0, 0x1

    return v0
.end method
