.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing$DKGhoul;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;
.source "DwarfKing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DwarfKing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DKGhoul"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 1

    const/4 v0, -0x2

    .line 1
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;->partnerID:I

    .line 2
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;->act()Z

    move-result v0

    return v0
.end method
