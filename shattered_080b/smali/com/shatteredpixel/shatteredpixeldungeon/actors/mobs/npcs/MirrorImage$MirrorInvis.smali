.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/MirrorImage$MirrorInvis;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Invisibility;
.source "MirrorImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/MirrorImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MirrorInvis"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Invisibility;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->announced:Z

    return-void
.end method


# virtual methods
.method public icon()I
    .locals 1

    const/16 v0, 0x3f

    return v0
.end method
