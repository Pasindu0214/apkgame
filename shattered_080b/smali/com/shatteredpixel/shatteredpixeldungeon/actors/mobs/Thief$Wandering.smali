.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief$Wandering;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Wandering;
.source "Thief.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Wandering"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief;


# direct methods
.method public synthetic constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief;Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief$Wandering;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief;

    invoke-direct {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Wandering;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    return-void
.end method


# virtual methods
.method public act(ZZ)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Wandering;->act(ZZ)Z

    .line 2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief$Wandering;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief;

    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    if-ne p2, v0, :cond_0

    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->FLEEING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
