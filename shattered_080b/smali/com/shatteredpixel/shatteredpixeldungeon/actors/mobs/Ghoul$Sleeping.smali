.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul$Sleeping;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Sleeping;
.source "Ghoul.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Sleeping"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;


# direct methods
.method public synthetic constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul$Sleeping;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;

    invoke-direct {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Sleeping;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    return-void
.end method


# virtual methods
.method public act(ZZ)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul$Sleeping;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;->partnerID:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findById(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iget-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->SLEEPING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    if-eq v2, v3, :cond_0

    .line 3
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul$Sleeping;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Ghoul;

    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->WANDERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 4
    iget p2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iput p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->target:I

    return v1

    .line 5
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Sleeping;->act(ZZ)Z

    return v1
.end method
