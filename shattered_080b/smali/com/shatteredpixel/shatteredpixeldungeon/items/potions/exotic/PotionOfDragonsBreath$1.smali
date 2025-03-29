.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1;
.super Ljava/lang/Object;
.source "PotionOfDragonsBreath.java"

# interfaces
.implements Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Ljava/lang/Integer;)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curItem:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 2
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect()Z

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "snd_drink.mp3"

    .line 4
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 6
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1$1;

    invoke-direct {v2, p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1;Ljava/lang/Integer;)V

    .line 7
    iput-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->animCallback:Lcom/watabou/utils/Callback;

    .line 8
    iget-object p1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v1, p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->turnTo(II)V

    .line 9
    iget-object p1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->operate:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    :goto_0
    return-void
.end method

.method public prompt()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "prompt"

    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
