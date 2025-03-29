.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Guard$1;
.super Ljava/lang/Object;
.source "Guard.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Guard;

.field public final synthetic val$newPosFinal:I


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Guard;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Guard$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Guard;

    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Guard$1;->val$newPosFinal:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 5

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Guard$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Guard;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Guard$1;->val$newPosFinal:I

    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Guard$1$1;

    invoke-direct {v4, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Guard$1$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Guard$1;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;IILcom/watabou/utils/Callback;)V

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->addDelayed(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;F)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Guard$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Guard;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->next()V

    return-void
.end method
